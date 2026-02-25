-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('law1901_group_name', 'law1901_field_first_name', 'law1901_field_last_name', 'law1901_group_register', 'law1901_group_administrative', 'law1901_field_leading_team', 'law1901_field_membership_limit_date', 'law1901_addon_last_query');
DELETE FROM wp_options WHERE option_name LIKE 'law1901_%';
DELETE FROM wp_options WHERE option_name LIKE '%_content';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name');

