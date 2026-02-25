#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccs_easycap_app_secret'
wp option delete 'ccs_easycap_tok_secret'
wp option delete 'ccs_easycap_ans_secret'
wp option delete 'ccs_easycap_math_ops'

