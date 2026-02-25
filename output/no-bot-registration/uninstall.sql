-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajdg_nobot_protect', 'ajdg_nobot_questions', 'ajdg_nobot_answers', 'disallowed_keys', 'ajdg_nobot_blacklist_usernames', 'ajdg_nobot_blacklist_protect', 'ajdg_nobot_blacklist_message', 'ajdg_nobot_security_message', 'ajdg_nobot_hide_review', 'ajdg_activate_no-bot-registration', 'ajdg_update_no-bot-registration');

