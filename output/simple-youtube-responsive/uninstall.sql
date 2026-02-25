-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_erdyt_options', '_eirudo_ytresponsive_ratio', '_eirudo_ytresponsive_maxwidth', '_eirudo_ytresponsive_classes', '_eirudo_ytresponsive_center', '_eirudo_ytresponsive_autoplay', '_eirudo_ytresponsive_loop', '_eirudo_ytresponsive_fullscreen', '_eirudo_ytresponsive_lazy', '_eirudo_ytresponsive_thumbsize', '_eirudo_ytresponsive_js', '_eirudo_ytresponsive_css', '_eirudo_ytresponsive_printedscripts', '_erdyt_ver');
DELETE FROM wp_options WHERE option_name LIKE '_eirudo_ytresponsive_%';

