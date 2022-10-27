$(document).ready(function () {
    window.addEventListener('message', function (event) {
        const ev = event.data
        switch (ev.action) {
            case "UpdateStatus":
            if (ev.display) {
                $(".stats-container").show();
                console.log(ev.moneyjucator, ev.idjucator, ev.numejoc)
                var seconds_left = 10;
                var interval = setInterval(function() {
                        document.getElementById('timer').innerHTML = 'Acest meniu va disparea in <span style="color: red;">' + --seconds_left + '</span> secunde';

                        if (seconds_left <= 0)
                        {
                            clearInterval(interval);
                            $(".stats-container").hide();
                        }
                    }, 1000);
                document.getElementById("money").innerHTML = '<i class="fa-solid fa-money-bill-wave"></i> Bani Jucator: €<span style="color: green;">' + formatMoney(ev.moneyjucator);
                document.getElementById("playerid").innerHTML = '<i class="fa-solid fa-hashtag"></i> ID Jucator: <span style="color: red;">' + ev.idjucator;
                document.getElementById("name").innerHTML = '<i class="fa-solid fa-user"></i> User: <span style="color: aqua;">' + ev.numejoc;
                document.getElementById("vip").innerHTML = '<i class="fa-solid fa-medal"></i> Este VIP: <span style="color: aqua;">' + ev.vipjucator;
                document.getElementById("sponsor").innerHTML = '<i class="fa-solid fa-shield-halved"></i> Este Sponsor: <span style="color: aqua;">' + ev.sponsorjucator;
                document.getElementById("moneybank").innerHTML = '<i class="fa-solid fa-building-columns"></i> Bani Banca: €<span style="color: green;">' + formatMoney(ev.moneybanca);
                document.getElementById("hours").innerHTML = '<i class="fa-solid fa-clock"></i> Ore Jucator: <span style="color: aqua;">' + ev.orejucator;
                document.getElementById("admin").innerHTML = '<i class="fa-solid fa-hammer"></i> Este Admin: <span style="color: aqua;">' + ev.adminjucator;
                document.getElementById("faction").innerHTML = '<i class="fa-solid fa-bookmark"></i> Este intr-o factiune: <span style="color: aqua;">' + ev.factionjucator;
                document.getElementById("cps").innerHTML = '<i class="fa-solid fa-handcuffs"></i> CP Jail: <span style="color: aqua;">' + ev.cpsjucator;
            } else{
                $(".stats-container").hide();
            }
            break;
        }
    })
});

function formatMoney(number) {
    return number.toLocaleString('en-US');
}