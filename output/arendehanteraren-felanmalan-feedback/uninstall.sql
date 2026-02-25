-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ahff_options', 'ahff_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ahff_dismissed_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ahff_dismissed_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ahff_dismissed_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ahff_dismissed_notice');

