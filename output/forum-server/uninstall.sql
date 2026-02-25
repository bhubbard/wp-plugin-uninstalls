-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vasthtml_options', 'wpf_mod_option_vers', 'wpf_widget', 'wpf_topic_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpf_useroptions', 'wpf_moderator', 'lastvisit');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpf_useroptions', 'wpf_moderator', 'lastvisit');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpf_useroptions', 'wpf_moderator', 'lastvisit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpf_useroptions', 'wpf_moderator', 'lastvisit');

