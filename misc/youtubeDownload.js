// This goes in ~/.vimperator/plugin/youtubeDownload.js
function youtubeDownload() {
    if (!/youtube/.test(buffer.URL)) {
        return "echo Not a Youtube URL";
    }
    var cmd = "cd ~/video && youtube-dl --no-progress ";
    var url = "'" + buffer.URL + "'";
    var cmd_string = cmd + url;
    return cmd_string;
};
