-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%create_topics';
DELETE FROM wp_options WHERE option_name LIKE '%create_premium';
DELETE FROM wp_options WHERE option_name LIKE '%checkout_page';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%premium_topic';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%premium_topic';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%premium_topic';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%premium_topic';

