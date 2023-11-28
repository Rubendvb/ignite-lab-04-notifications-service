-- CreateTable
CREATE TABLE "Notifications" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "recipienId" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "readAt" DATETIME,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateIndex
CREATE INDEX "Notifications_recipienId_idx" ON "Notifications"("recipienId");
