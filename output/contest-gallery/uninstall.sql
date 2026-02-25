-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p_cgal1ery_count_uploads', 'p_cgal1ery_reg_code', 'p_c1_k_g_r_9', 'p_cgal1ery_uploadscounter_reminder', 'p_cgal1ery_reminder_time', 'p_cgal1ery_count_users', 'p_cgal1ery_db_version', 'p_cgal1ery_install_date', 'CgEntriesOwnSlugName', 'CgEntriesOwnSlugNameGalleries', 'CgEntriesOwnSlugNameGalleriesUser', 'CgEntriesOwnSlugNameGalleriesNoVoting', 'CgEntriesOwnSlugNameGalleriesWinner', 'CgEntriesOwnSlugNameGalleriesEcommerce');
DELETE FROM wp_options WHERE option_name LIKE 'CgEntriesOwnSlugName%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'nickname');

