#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_post_types'
wp option delete 'pi_hp_deactivated_plugins'
wp option delete 'pi_op_deactivated_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_deactivated_plugins_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_deactivated_plugins_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_deactivated_plugins_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_deactivated_plugins_meta'"
