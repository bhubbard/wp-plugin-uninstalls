-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('threemasmart_position', 'threemasmart_id', 'threemasmart_floation_posi_rechts_nach_links', 'threemasmart_floating_posi_unten_nach_oben', 'threemasmart_floatingbutton_status');

