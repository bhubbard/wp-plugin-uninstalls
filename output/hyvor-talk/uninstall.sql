-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hyvor_talk_website_id', 'hyvor_talk_loading_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hyvor_talk_membership_plan');
DELETE FROM wp_usermeta WHERE meta_key IN ('hyvor_talk_membership_plan');
DELETE FROM wp_termmeta WHERE meta_key IN ('hyvor_talk_membership_plan');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hyvor_talk_membership_plan');

