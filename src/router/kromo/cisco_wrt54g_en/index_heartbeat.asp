<div>
  <div class="setting">
    <div class="label">User Name</div>
    <input name="ppp_username" size="24" maxLength="63" onBlur="valid_name(this,'User Name')" value='<% nvram_get("ppp_username"); %>' />
  </div>
  <div class="setting">
    <div class="label">Password</div>
    <input name="ppp_passwd" size="24" maxLength="63" onBlur="valid_name(this,'Password')" type="password" value='<% nvram_invmatch("ppp_passwd","","d6nw5v1x2pc7st9m"); %>' />
  </div>
  <div class="setting">
    <div class="label">Heart Beat Server</div>
    <input type="hidden" name="hb_server_ip" value="4" />
    <input class="num" maxLength="3" size="3" name="hb_server_ip_0" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("hb_server_ip","0"); %>' />.<input class="num" maxLength="3" size="3" name="hb_server_ip_1" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("hb_server_ip","1"); %>' />.<input class="num" maxLength="3" size="3" name="hb_server_ip_2" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("hb_server_ip","2"); %>' />.<input class="num" maxLength="3" size="3" name="hb_server_ip_3" onBlur="valid_range(this,1,254,'IP')" value='<% get_single_ip("hb_server_ip","3"); %>' />
  </div>
  <div class="setting">
    <input type="radio" name="ppp_demand" value="1" onchange="ppp_enable_disable(this.form,1)" <% nvram_match("ppp_demand","1","checked"); %> /> Connect on Demand: Max Idle Time
    <input class="num" size="4" maxLength="4" name="ppp_idletime" onBlur="valid_range(this,1,9999,'Idle time')" value='<% nvram_get("ppp_idletime"); %>' /> Min.
  </div>
  <div class="setting">
    <input type="radio" name="ppp_demand" value="0" onchange="ppp_enable_disable(this.form,0)" <% nvram_match("ppp_demand","0","checked"); %> /> Keep Alive: Redial Period
    <input class="num" size="4" maxLength="4" name="ppp_redialperiod" onBlur="valid_range(this,20,180,'Redial period')" value='<% nvram_get("ppp_redialperiod"); %>' /> Sec.
  </div>
</div>