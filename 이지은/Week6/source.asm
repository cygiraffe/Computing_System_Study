// computer 1 + ... + RAM[0] and stores the sum in RAM[1]
    // 레지스터 i를 선택
    @i 
    M=1
    // sum을 0으로 초기화 
    @sum
    M=0
(LOOP)
    @i
    D=M
    @R0
    D=D-M // 루프의 종료 조건으로 사용
    @WRITE
    D;JGT // D가 0보다 크면 WRITE 레이블로 점프
    @i
    D=M
    @sum
    M=D+M
    @i
    M=M+1
    @LOOP
    0;JMP
(WRITE)
    @sum
    D=M
    @R1
    M=D
(END)
    @END
    0;JMP // 무한 루프 
