-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('restrictioncurrentversion', 'restrictiondisableallfeature', 'restrictionmoregisterpageurl', 'saved_open_page_url', 'restrictionenablepagelevelprotect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('restc_restriction_access_to_this_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('restc_restriction_access_to_this_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('restc_restriction_access_to_this_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('restc_restriction_access_to_this_page');

