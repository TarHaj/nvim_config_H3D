        INTEGER = x
        DOUBLE PRECISION = y
        CHARACTER(200) = z
        LOGICAL = happy
        INTEGER,dimension(100) = xarr
        DOUBLE PRECISION,dimension(200) = yarr
        CHARACTER(100),dimension(100) = zarr
        INTEGER,pointer,dimension(:) = xpoint
        DOUBLE PRECISION,pointer,dimension(:,:) = dp 
        CHARACTER(100),pointer,dimension(:,:) = names
        LOGICAL,pointer,dimension(:) = sad 
        
        if(i.le.10) i=i+j
        
        program nvim 
        implicit none 


        DOUBLE PRECISION,dimension(100) = <var> 

        end program 

        
        milan

        READ(*,*) x,y
        read(20,*) x,y,z


        open(20,file=fn)
          read(20,*) 
          read(20,*) 
          read(200,*) 



          read(200,*) 
          WRITE(fu,'(3F10.6)') x,y,z
        
          open(fu,file=fn)
            read(fu,*) 
            read(fu,*) 
            read(20,*) 




          close(fu)
        close(20)

