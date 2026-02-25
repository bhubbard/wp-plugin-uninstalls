-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fvp_sm_share_posts_active', 'fvp_sm_share_front_page_active', 'fvp_sm_share_pages_active', 'fvp_sm_sharing_items_order', 'fvp_sm_buttons_type', 'fvp_sm_buttons_text', 'fvp_sm_buttons_place');

