-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cardtype_options', 'remove_pubdate', 'copyprotect_options', 'protectuser_options', 'protectfunction_options', 'loadinganime_options', 'sangoplusfont_options', 'my_theme_options', 'tagcloud_options', 'pagecss_options');

