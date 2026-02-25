-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reviewfic_review_stars', 'reviewfic_client_name', 'reviewfic_client_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('reviewfic_review_stars', 'reviewfic_client_name', 'reviewfic_client_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('reviewfic_review_stars', 'reviewfic_client_name', 'reviewfic_client_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reviewfic_review_stars', 'reviewfic_client_name', 'reviewfic_client_company');

