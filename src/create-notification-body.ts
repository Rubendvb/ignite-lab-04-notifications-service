import { IsNotEmpty, IsUUID, Length } from 'class-validator';

export class CreateNotificationBody {
  @IsNotEmpty()
  @IsUUID()
  recipientId: string;

  @IsNotEmpty()
  @Length(5, 240) // Min 5, Máx 240
  content: string;

  @IsNotEmpty()
  category: string;
}
