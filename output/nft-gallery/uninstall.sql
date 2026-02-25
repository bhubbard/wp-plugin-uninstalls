-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nftgallery-api', 'nftgallery-type', 'nftgallery-limit', 'nftgallery-style', 'nftgallery-id');

