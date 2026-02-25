-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_schema_review_type', '_schema_ref', '_schema_review_rating_scale', '_schema_review_rating', '_schema_review_name', '_schema_review_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('_schema_review_type', '_schema_ref', '_schema_review_rating_scale', '_schema_review_rating', '_schema_review_name', '_schema_review_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('_schema_review_type', '_schema_ref', '_schema_review_rating_scale', '_schema_review_rating', '_schema_review_name', '_schema_review_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_schema_review_type', '_schema_ref', '_schema_review_rating_scale', '_schema_review_rating', '_schema_review_name', '_schema_review_exclude');

