-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps_aggr_slug_act', 'aggr_company_name', 'aggr_street_address', 'aggr_address_locality', 'aggr_address_region', 'aggr_phone', 'aggr_logo_url', 'rating_count', 'rating_scale', 'rating_votes', 'price_range', 'page_slug', 'ps_aggr_company_name', 'ps_aggr_street_address', 'ps_aggr_address_locality', 'ps_aggr_address_region', 'ps_aggr_phone', 'ps_aggr_logo_url', 'ps_rating_count', 'ps_rating_scale', 'ps_rating_votes', 'ps_price_range');

