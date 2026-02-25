-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajdg_spamblocker_domains', 'ajdg_activate_analytics-spam-blocker', 'ajdg_spamblocker_hide_birthday', 'ajdg_spamblocker_hide_review', 'ajdg_spamblocker_updates', 'ajdg_spamblocker_user', 'ajdg_spamblocker_stats', 'ajdg_spamblocker_error', 'ajdg_spamblocker_subscription', 'ajdg_spamblocker_reports', 'ajdg_spamblocker_hide_register', 'ajdg_spamblocker_version', 'ajdg_update_analytics-spam-blocker');

