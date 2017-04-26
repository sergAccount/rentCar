package main.services;

import main.models.dao.CarDao;
import main.models.dao.CarDaoImpl;
import main.models.pojo.Car;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    public static final Logger logger = LogManager.getLogger(CarServiceImpl.class.getName());

    @Autowired
    private CarDao carDao;

    @Override
    public List<Car> getAllCars() {
        return carDao.getAll();
    }

    @Override
    public boolean deleteCarById(int id) {
        carDao.deleteCar(id);
        return false;
    }

    @Override
    public boolean editCar(int id, String vin, int year, int model) {
        return carDao.editCar(id, vin, year, model);
    }

    @Override
    public boolean addCar(String vin, int year, int model) {
        return carDao.addCar(vin, year, model);
    }

    @Override
    public Car getCarById(int id) {
        return carDao.getById(id);
    }
}
