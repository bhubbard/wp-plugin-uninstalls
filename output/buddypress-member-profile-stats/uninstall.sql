-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_member_profile_stats_displaycounts', 'bp_member_profile_stats_display_sidebarme');

