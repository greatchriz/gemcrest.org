
{if $settings.index_last_withdrawals}
{loaddata name="transactions" limit=$settings.index_last_withdrawals type="withdrawal" var="last_withdrawals"}
{/if}

{if $last_withdrawals}
<!-- Image Table: Start -->
{foreach from=$last_withdrawals item=s}

  <tr>

    <td data-label="Gateway">
        <div class="user">
            <div class="thumb"><img
                    src="images/{$s.ec}.gif"
                    alt="image"
                ></div>
        </div>
    </td>
    <td data-label="Name">{$s.username}</td>
    <td data-label="Date">{$s.date}</td>
    <td data-label="Amount">{$currency_sign}{$s.amount}</td>
</tr>


{/foreach}
{/if}


