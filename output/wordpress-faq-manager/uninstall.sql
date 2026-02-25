-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faq_options', 'wpfaq_admin_fetch_faqs', 'wpfaq_widget_fetch_random', 'wpfaq_widget_fetch_recent', 'wpfaq_total_faq_count');

