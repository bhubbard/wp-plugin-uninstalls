-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetblocker_switch', 'jetblocker_fullscreen', 'wpcd_skin', 'jetblocker_heading', 'jetblocker_subheading', 'jetblocker_text', 'whitelist_btn_text', 'jetblocker_donate_btn_text', 'jetblocker_donate_link', 'jetblocker_anti_ad_blocker', 'jetblocker_reviews');

