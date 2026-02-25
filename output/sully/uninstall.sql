-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SULly_System_Settings', 'SULly_Removed', 'EntriesToDisplay', 'PageEntriesToDisplay', 'SULly_DBVersion', 'SULly_Entries_To_Display', 'SULly_Page_Entries_To_Display', 'SULly_Disable_WP_Email_Notifications', 'SULly_Send_Email_Notifications');

