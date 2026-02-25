#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oba_dab_ex_admin'
wp option delete 'oba_dab_ex_editor'
wp option delete 'oba_dab_ex_author'
wp option delete 'oba_dab_ex_con'
wp option delete 'oba_dab_ex_sub'
wp option delete 'oba_dab_ex_any_logged'
wp option delete 'oba_dab_ex_any_visitor'
wp option delete 'oba_dab_op_title'
wp option delete 'oba_dab_op_message'
wp option delete 'adab_cookie_name'

