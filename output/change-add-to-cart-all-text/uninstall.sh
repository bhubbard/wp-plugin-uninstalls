#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcatct_global_txt'
wp option delete 'wcatct_global_txt_diff'
wp option delete 'wcatct_archive_txt'
wp option delete 'wcatct_product_type_txt_diff_archive'
wp option delete 'wcatct_single_txt'
wp option delete 'wcatct_product_type_txt_diff_single'

