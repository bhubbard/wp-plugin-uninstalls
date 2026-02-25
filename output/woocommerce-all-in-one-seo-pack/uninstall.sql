-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aioseop_keywords', '_aioseop_description', '_aioseop_title', '_aioseop_titleatr', '_aioseop_menulabel', '_aioseop_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aioseop_keywords', '_aioseop_description', '_aioseop_title', '_aioseop_titleatr', '_aioseop_menulabel', '_aioseop_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aioseop_keywords', '_aioseop_description', '_aioseop_title', '_aioseop_titleatr', '_aioseop_menulabel', '_aioseop_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aioseop_keywords', '_aioseop_description', '_aioseop_title', '_aioseop_titleatr', '_aioseop_menulabel', '_aioseop_disable');

