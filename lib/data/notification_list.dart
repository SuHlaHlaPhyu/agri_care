class NotificationList {
  //--- Name Of NotificationList
  final String name;

  //--- date
  final String date;

  //--- detail
  final String detail;

  NotificationList({this.name, this.date, this.detail});

  static List<NotificationList> notiList() {
    var list = new List<NotificationList>();

    list.add(new NotificationList(
        name: "ခူးဆွတ်ချိန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသောခရမ်းချဥ်ပင်များ ခူးဆွတ်ရန် သင့်လျော်သော အချိန်ရောက်ရှိပါပြီ"));
    list.add(new NotificationList(
        name: "ဆေးဖြန်းချိန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသော ငရုပ်ပင်များ အာဟာရ ပြည့်ဝရန် Compound -15:15:15 ကို ဖြန်းပေးသင့်သော...."));
    list.add(new NotificationList(
        name: "ပေါင်းရှင်းရန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသော ခရမ်းချဥ်ပင်များ အနီးတွင် ပေါင်းပင်များကြီးထွားနေပါက ဂရုပြုရှင်းလင်းပေးရန် ။"));
    list.add(new NotificationList(
        name: "ရာသီဥတု",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "မြန်မာနိုင်ငံအလယ်ပိုင်းဒေသများတွင် ထစ်ချုန်းမည့် အခြေအနေများ ဆက်လက်ဖြစ်ပေါ်...."));
    list.add(new NotificationList(
        name: "ဧရာဝတီမြစ် စိုးရိမ်ရေမှတ်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "ဧရာဝတီမြစ်ရေသည် မုံရွာမြို့တွင် စိုးရိမ်ရေမှတ်ထက် (၂) လက်မခန့် ကျော်လွန်နေပါသည်"));
    list.add(new NotificationList(
        name: "ခူးဆွတ်ချိန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသောခရမ်းချဥ်ပင်များ ခူးဆွတ်ရန် သင့်လျော်သော အချိန်ရောက်ရှိပါပြီ"));
    list.add(new NotificationList(
        name: "ဆေးဖြန်းချိန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသော ငရုပ်ပင်များ အာဟာရ ပြည့်ဝရန် Compound -15:15:15 ကို ဖြန်းပေးသင့်သော...."));
    list.add(new NotificationList(
        name: "ပေါင်းရှင်းရန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသော ခရမ်းချဥ်ပင်များ အနီးတွင် ပေါင်းပင်များကြီးထွားနေပါက ဂရုပြုရှင်းလင်းပေးရန် ။"));
    list.add(new NotificationList(
        name: "ဆေးဖြန်းချိန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသော ငရုပ်ပင်များ အာဟာရ ပြည့်ဝရန် Compound -15:15:15 ကို ဖြန်းပေးသင့်သော...."));
    list.add(new NotificationList(
        name: "ပေါင်းရှင်းရန်",
        date: "09 : 15 AM, 12 Jun 2",
        detail: "စိုက်ပျိုးထားသော ခရမ်းချဥ်ပင်များ အနီးတွင် ပေါင်းပင်များကြီးထွားနေပါက ဂရုပြုရှင်းလင်းပေးရန် ။"));
    return list;
  }
}
