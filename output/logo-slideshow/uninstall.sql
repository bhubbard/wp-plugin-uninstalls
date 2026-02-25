-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logo-url1', 'logo-img1', 'logo-url2', 'logo-img2', 'logo-url3', 'logo-img3', 'logo-url4', 'logo-img4', 'logo-url5', 'logo-img5', 'logo-url6', 'logo-img6');

