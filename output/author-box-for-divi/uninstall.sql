-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abfd-dismiss-notice', 'abfd-dismiss-notice-rating', 'abfd-option-migrate-old-networks', 'abfd-option-disable-on-post-types', 'abfd-option-new-tab', 'abfd-option-email-icon', 'abfd-option-website-icon', 'abfd-option-social-icon-as-original', 'abfd-option-hyperlink-author-page', 'abfd-option-guest-authors', 'abfd-option-multiple-authors', 'abfd-option-author-posts-page-link', 'abfd-option-profile-picture-link', 'abfd-option-author-name-link', 'abfd-option-author-box-position', 'abfd-option-exclude-categories', 'abfd-option-name-prefix', 'abfd-option-icon-shape', 'abfd-option-icon-color', 'abfd-option-link-attributes', 'abfd-option-text-color', 'abfd-option-background-color', 'abfd-option-border-color', 'abfd-option-border-radius', 'abfd-option-border-size', 'abfd-option-profile-picture-position', 'abfd-option-profile-picture-shape', 'abfd-option-profile-picture-border-color', 'abfd-option-profile-picture-border', 'abfd-option-font', 'abfd-option-font-size', 'abfd-option-hyperlink-color', 'abfd-option-license-key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('abfd-user-disable', 'abfd-user-photograph');
DELETE FROM wp_usermeta WHERE meta_key IN ('abfd-user-disable', 'abfd-user-photograph');
DELETE FROM wp_termmeta WHERE meta_key IN ('abfd-user-disable', 'abfd-user-photograph');
DELETE FROM wp_commentmeta WHERE meta_key IN ('abfd-user-disable', 'abfd-user-photograph');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'abfd-user-social-networks-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'abfd-user-social-networks-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'abfd-user-social-networks-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'abfd-user-social-networks-%';

