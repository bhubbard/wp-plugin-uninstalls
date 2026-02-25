-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thank_you_page', 'jobs_page_url', 'forget_page_url', 'login_page_url', 'register_page_url', 'profile_page_urll', 'jobs_search_url');

