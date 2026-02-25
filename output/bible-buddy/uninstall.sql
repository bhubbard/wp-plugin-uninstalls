-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('display_card_on_posts', 'display_card_on_pages', 'format', 'theme', 'display_credit_link');

