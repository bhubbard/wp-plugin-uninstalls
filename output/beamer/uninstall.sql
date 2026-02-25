-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beamer_settings_option_name', 'bmr_api_ping_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bmr_ignore', 'bmr_category', 'bmr_link_text', 'bmr_feedback', 'bmr_reactions', 'bmr_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('bmr_ignore', 'bmr_category', 'bmr_link_text', 'bmr_feedback', 'bmr_reactions', 'bmr_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('bmr_ignore', 'bmr_category', 'bmr_link_text', 'bmr_feedback', 'bmr_reactions', 'bmr_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bmr_ignore', 'bmr_category', 'bmr_link_text', 'bmr_feedback', 'bmr_reactions', 'bmr_id');

