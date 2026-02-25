#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CCNG_DUMMY_CARD_status'
wp option delete 'CCNG_generate_btn_link_text'
wp option delete 'CCNG_generate_btn_txt_color'
wp option delete 'CCNG_generate_btn_link_color'
wp option delete 'CCNG_copy_btn_link_text'
wp option delete 'CCNG_cpy_btn_txt_color'
wp option delete 'CCNG_copy_btn_link_color'
wp option delete 'CCNG_validate_input_ph'
wp option delete 'CCNG_validate_btn_txt'
wp option delete 'CCNG_validate_btn_color'
wp option delete 'CCNG_validate_btn_bgcolor'
wp option delete 'ccng_activation_date'

