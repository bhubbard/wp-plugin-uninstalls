-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcareers', 'wpca_affiliate_id', 'wpca_userId', 'wpca_password', 'rss_language');
DELETE FROM wp_options WHERE option_name LIKE '%before_Tag';
DELETE FROM wp_options WHERE option_name LIKE '%after_Tag';

