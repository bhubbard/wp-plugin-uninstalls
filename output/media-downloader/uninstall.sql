-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp3folder', 'calculateprefix', 'markuptemplate', 'customcss', 'replaceheaders', 'mediaextensions', 'packageextensions', 'showcover', 'showfeatured', 'embedwhere', 'tagencoding', 'filenameencoding', 'sortfiles', 'reversefiles', 'showtags', 'covermarkup', 'downloadtext', 'playtext', 'stoptext', 'removeextension', 'packagetitle', 'packagetexts', 'embedplayer', 'autoplaylist', 'handlefeed', 'cachedir', 'overwritefeedlink');

