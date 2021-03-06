export class ShortURLWithTarget {
  private shortURLId: number;
  private groupName: string;
  private customSuffix: string;
  private createTimestamp: Date;
  private scope: number;
  private targetURL: string;
  private assignTimestamp: Date;
  private deleteFlag: boolean;
  private updateFlag: boolean;

  public constructor(shortURLId: number, groupName: string, customSuffix: string, createTimestamp: string, scope: number,
                     targetURL: string, assignTimestamp: string, deleteFlag: boolean, updateFlag: boolean) {
    this.shortURLId = shortURLId;
    this.groupName = groupName;
    this.customSuffix = customSuffix;
    this.createTimestamp = new Date(Date.parse(createTimestamp));
    this.scope = scope;
    this.targetURL = targetURL;
    this.assignTimestamp = new Date(Date.parse(assignTimestamp));
    this.deleteFlag = deleteFlag;
    this.updateFlag = updateFlag;
  }
}

export function convertToShortURLWithTarget(object: any[]): ShortURLWithTarget {
  return new ShortURLWithTarget(
    Number.parseInt(object[0], 10),
    object[1],
    object[2],
    object[3],
    Number.parseInt(object[4], 10),
    object[7],
    object[8],
    object[5],
    object[6],
  );
}

export class GroupName {
  private groupName: string;

  public constructor(groupName: string) {
    this.groupName = groupName;
  }
}
