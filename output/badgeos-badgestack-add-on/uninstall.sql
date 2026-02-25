-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BadgeOS_BadgeStack_Activated', 'badgeos_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_singular_name', '_badgeos_plural_name', '_badgeos_show_in_menu', '_badgeos_count', '_badgeos_trigger_type', '_badgeos_achievement_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_singular_name', '_badgeos_plural_name', '_badgeos_show_in_menu', '_badgeos_count', '_badgeos_trigger_type', '_badgeos_achievement_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_singular_name', '_badgeos_plural_name', '_badgeos_show_in_menu', '_badgeos_count', '_badgeos_trigger_type', '_badgeos_achievement_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_singular_name', '_badgeos_plural_name', '_badgeos_show_in_menu', '_badgeos_count', '_badgeos_trigger_type', '_badgeos_achievement_type');

