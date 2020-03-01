var img=document.createElement("img");
img.name="infoclick_img";
img.style="z-index:100000;pointer-events: none;position:fixed;left:#1px;top:#2px;width:#3px;height:#4px;pointer-events:none;";
img.src="#5";
document.body.appendChild(img);
setTimeout(() => {
    document.getElementsByName("infoclick_img").forEach((child) => {
        document.body.removeChild(child);
    });
},#6);