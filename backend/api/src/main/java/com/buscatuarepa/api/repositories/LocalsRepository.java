package com.buscatuarepa.api.repositories;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.buscatuarepa.api.dtos.LocalDTO;

import org.springframework.stereotype.Repository;

@Repository
public class LocalsRepository {

  @PersistenceContext
  private EntityManager em;

  public List<LocalDTO> getBuenosAiresLocals() {
    Query q = em.createNativeQuery("select * from arg_buenosaires");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<LocalDTO> localesDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      localesDTO.add(
          new LocalDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3], (String) tuple[4],
              (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8], (String) tuple[9],
              (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13], (String) tuple[14],
              (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18], (String) tuple[19],
              (String) tuple[20], (String) tuple[21], (String) tuple[22], (String) tuple[23], (String) tuple[24]));
    }
    return localesDTO;
  }

  public List<LocalDTO> getNeuquenLocals() {
    Query q = em.createNativeQuery("select * from arg_neuquen");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<LocalDTO> localesDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      localesDTO.add(
          new LocalDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3], (String) tuple[4],
              (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8], (String) tuple[9],
              (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13], (String) tuple[14],
              (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18], (String) tuple[19],
              (String) tuple[20], (String) tuple[21], (String) tuple[22], (String) tuple[23], (String) tuple[24]));
    }
    return localesDTO;
  }

  public List<LocalDTO> getLlanquihueLocals() {
    Query q = em.createNativeQuery("select * from chl_llanquihue");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<LocalDTO> localesDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      localesDTO.add(
          new LocalDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3], (String) tuple[4],
              (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8], (String) tuple[9],
              (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13], (String) tuple[14],
              (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18], (String) tuple[19],
              (String) tuple[20], (String) tuple[21], (String) tuple[22], (String) tuple[23], (String) tuple[24]));
    }
    return localesDTO;
  }

  public List<LocalDTO> getSantiagoLocals() {
    Query q = em.createNativeQuery("select * from chl_santiago");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<LocalDTO> localesDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      localesDTO.add(
          new LocalDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3], (String) tuple[4],
              (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8], (String) tuple[9],
              (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13], (String) tuple[14],
              (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18], (String) tuple[19],
              (String) tuple[20], (String) tuple[21], (String) tuple[22], (String) tuple[23], (String) tuple[24]));
    }
    return localesDTO;
  }

  public List<LocalDTO> getMexCiudadLocals() {
    Query q = em.createNativeQuery("select * from mex_ciudad");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<LocalDTO> localesDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      localesDTO.add(
          new LocalDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3], (String) tuple[4],
              (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8], (String) tuple[9],
              (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13], (String) tuple[14],
              (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18], (String) tuple[19],
              (String) tuple[20], (String) tuple[21], (String) tuple[22], (String) tuple[23], (String) tuple[24]));
    }
    return localesDTO;
  }

  public List<LocalDTO> getMontevideoLocals() {
    Query q = em.createNativeQuery("select * from ury_montevideo");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<LocalDTO> localesDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      localesDTO.add(
          new LocalDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3], (String) tuple[4],
              (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8], (String) tuple[9],
              (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13], (String) tuple[14],
              (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18], (String) tuple[19],
              (String) tuple[20], (String) tuple[21], (String) tuple[22], (String) tuple[23], (String) tuple[24]));
    }
    return localesDTO;
  }

}
