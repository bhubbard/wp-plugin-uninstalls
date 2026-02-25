-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmfaq_page_id', 'active_sitewide_plugins', 'cmfaq_options', 'cmfaqf_refresh_404_permalinks');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmfaq_rating', 'cmfaq_main_category_id', 'cmfaq_show_voting');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmfaq_rating', 'cmfaq_main_category_id', 'cmfaq_show_voting');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmfaq_rating', 'cmfaq_main_category_id', 'cmfaq_show_voting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmfaq_rating', 'cmfaq_main_category_id', 'cmfaq_show_voting');

