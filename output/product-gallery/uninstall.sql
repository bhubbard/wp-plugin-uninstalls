-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wpds_tax_pic%';
DELETE FROM wp_options WHERE option_name LIKE 'product_page%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('newprod', 'galleryurl', 'prodshortdesc', 'prodrate');
DELETE FROM wp_usermeta WHERE meta_key IN ('newprod', 'galleryurl', 'prodshortdesc', 'prodrate');
DELETE FROM wp_termmeta WHERE meta_key IN ('newprod', 'galleryurl', 'prodshortdesc', 'prodrate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('newprod', 'galleryurl', 'prodshortdesc', 'prodrate');

