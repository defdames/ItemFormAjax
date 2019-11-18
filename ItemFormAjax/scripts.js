function setReqDateNow() {
    var d = new Date();
    var reqDate = $find("<%= direqDate.ClientID %>");

    direqDate.set_selectedDate(d);

}