-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opencabs_options', 'uhs_snippet_list', 'uhs_quote_snippet_list', 'uhs_login_snippet_list');
DELETE FROM wp_options WHERE option_name LIKE 'uhs_snippet-%';
DELETE FROM wp_options WHERE option_name LIKE '%][format]';
DELETE FROM wp_options WHERE option_name LIKE '%][language]';
DELETE FROM wp_options WHERE option_name LIKE '%][google_north]';
DELETE FROM wp_options WHERE option_name LIKE '%][google_south]';
DELETE FROM wp_options WHERE option_name LIKE '%][google_east]';
DELETE FROM wp_options WHERE option_name LIKE '%][google_west]';
DELETE FROM wp_options WHERE option_name LIKE '%][snippet_redirect_url]';

