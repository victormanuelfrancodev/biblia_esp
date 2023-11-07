-- CreateTable
CREATE TABLE "verse" (
    "id" TEXT NOT NULL,
    "number" TEXT NOT NULL,
    "reference" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "chapterId" TEXT NOT NULL,

    CONSTRAINT "verse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "chapter" (
    "id" TEXT NOT NULL,
    "number" TEXT NOT NULL,
    "reference" TEXT NOT NULL,
    "bookId" TEXT NOT NULL,

    CONSTRAINT "chapter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "book" (
    "id" TEXT NOT NULL,
    "abbreviation" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "nameLong" TEXT NOT NULL,
    "bibleId" TEXT NOT NULL,

    CONSTRAINT "book_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bible" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "abbreviation" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "language" TEXT NOT NULL,
    "copyright" TEXT NOT NULL,

    CONSTRAINT "bible_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "verse" ADD CONSTRAINT "verse_chapterId_fkey" FOREIGN KEY ("chapterId") REFERENCES "chapter"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "chapter" ADD CONSTRAINT "chapter_bookId_fkey" FOREIGN KEY ("bookId") REFERENCES "book"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "book" ADD CONSTRAINT "book_bibleId_fkey" FOREIGN KEY ("bibleId") REFERENCES "bible"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
