function copyPageUrl() {
    const pageUrl = window.location.href;
    navigator.clipboard.writeText(pageUrl)
        .then(() => {
            alert("Sayfanın linki kopyalandı: " + pageUrl);
        })
        .catch(err => {
            console.error("Link kopyalanamadı: ", err);
        });
}

function openModal() {
    document.getElementById("modalOverlay").style.display = "block";
    document.getElementById("modal").style.display = "block";
}

function closeModal() {
    document.getElementById("modalOverlay").style.display = "none";
    document.getElementById("modal").style.display = "none";
}