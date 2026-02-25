#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'setup_huu_wts_prod_box_block_woo'
wp option delete 'setup_huu_wts_prod_box_woo'
wp option delete 'setup_huu_wts_prod_page_woo'
wp option delete 'setup_huu_wts_text_woo'
wp option delete 'setup_huu_wts_number_woo'

