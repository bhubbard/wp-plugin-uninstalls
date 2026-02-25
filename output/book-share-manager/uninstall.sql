-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bsm_user_id', 'bsm_user_pin', 'bsm_sharer_dept', 'bsm_sharer_email', 'bsm_sharer_phone', 'bsm_book_category', 'bsm_book_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('bsm_user_id', 'bsm_user_pin', 'bsm_sharer_dept', 'bsm_sharer_email', 'bsm_sharer_phone', 'bsm_book_category', 'bsm_book_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('bsm_user_id', 'bsm_user_pin', 'bsm_sharer_dept', 'bsm_sharer_email', 'bsm_sharer_phone', 'bsm_book_category', 'bsm_book_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bsm_user_id', 'bsm_user_pin', 'bsm_sharer_dept', 'bsm_sharer_email', 'bsm_sharer_phone', 'bsm_book_category', 'bsm_book_author');

