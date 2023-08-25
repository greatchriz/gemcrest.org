{if $settings.index_last_deposits}
    {loaddata name="transactions" limit=$settings.index_last_deposits type="deposit" var="last_deposits"}
    {/if}
    
    {if $last_deposits}
    <!-- Image Table: Start -->
    {foreach from=$last_deposits item=s}

        <tr>
            <td data-label="Name">
                <div class="user">
                    <div class="thumb"><img
                            src="images/{$s.ec}.gif"
                            alt="image"
                        ></div>
                    <span>{$s.username}</span>
                </div>
            </td>
            <td data-label="Date">{$s.date}</td>
            <td data-label="Amount">{$currency_sign}{$s.amount}</td>
        </tr>

    {/foreach}
    {/if}
    

