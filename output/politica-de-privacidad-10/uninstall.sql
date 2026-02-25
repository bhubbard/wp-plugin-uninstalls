-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('privacy_policy_sitename', 'privacy_policy_before_heading', 'privacy_policy_after_heading', 'privacy_policy_before_paragraph', 'privacy_policy_after_paragraph', 'privacy_policy_contact', 'privacy_policy_title', 'privacy_policy_slug', 'privacy_policy_pp_help', 'privacy_policy_browser_help', 'privacy_policy_credit');

