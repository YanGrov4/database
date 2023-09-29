-- CreateTable
CREATE TABLE "BooleanMeta" (
    "id" SERIAL NOT NULL,
    "type" VARCHAR(10) NOT NULL,
    "extend_id" INTEGER NOT NULL,
    "is_active" BOOLEAN NOT NULL DEFAULT true,
    "is_deleted" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BooleanMeta_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "BooleanMeta_type_extend_id_key" ON "BooleanMeta"("type", "extend_id");
