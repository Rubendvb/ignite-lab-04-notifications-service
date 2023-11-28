/*
  Warnings:

  - You are about to drop the column `recipienId` on the `Notifications` table. All the data in the column will be lost.
  - Added the required column `recipientId` to the `Notifications` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Notifications" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "recipientId" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "readAt" DATETIME,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_Notifications" ("category", "content", "createdAt", "id", "readAt") SELECT "category", "content", "createdAt", "id", "readAt" FROM "Notifications";
DROP TABLE "Notifications";
ALTER TABLE "new_Notifications" RENAME TO "Notifications";
CREATE INDEX "Notifications_recipientId_idx" ON "Notifications"("recipientId");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
