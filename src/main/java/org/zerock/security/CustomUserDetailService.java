package org.zerock.security;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.zerock.domain.CustomUser;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

@Log4j
public class CustomUserDetailService implements UserDetailsService {

    @Setter(onMethod_ = @Autowired)
    private MemberMapper memberMapper;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        log.warn("Load User By UserName : " + userName);

        MemberVO vo = memberMapper.read(userName);

        log.warn("queried by member mapper: " + vo);

        return vo == null? null : new CustomUser(vo);
    }
}