-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_vegas_options', 'cb_vegas_validation_transient', 'cb_vegas_current_slideshow_index_transient', 'cb_vegas_current_options_transient', 'cb_vegas_current_menu_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cb_vegas_singular');
DELETE FROM wp_usermeta WHERE meta_key IN ('cb_vegas_singular');
DELETE FROM wp_termmeta WHERE meta_key IN ('cb_vegas_singular');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cb_vegas_singular');

